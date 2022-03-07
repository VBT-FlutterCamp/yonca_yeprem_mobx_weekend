import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import '../../../core/base/base_view.dart';
import '../viewModel/quote_view_model.dart';

class QuotesView extends StatelessWidget {
  const QuotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<QuoteViewModel>(
        viewModel: QuoteViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, QuoteViewModel viewModel) =>
            Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text(
                    "Quotes For Inspration",
                  ),
                ),
                body: Observer(builder: (_) {
                  return viewModel.isLoading
                      ? buildBody(viewModel)
                      : const Center(
                          child: CircularProgressIndicator(),
                        );
                })));
  }

  ListView buildBody(QuoteViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.quotesList?.length,
      itemBuilder: (BuildContext context, int index) {
        return buildListItemCard(viewModel, index, context);
      },
    );
  }

  Card buildListItemCard(
      QuoteViewModel viewModel, int index, BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          viewModel.quotesList?[index].text ?? '',
          style: context.textTheme.headline6?.copyWith(),
        ),
        subtitle: Padding(
          padding: context.verticalPaddingLow,
          child: Text(
            viewModel.quotesList?[index].author ?? 'Unknown',
            style: context.textTheme.bodyLarge
                ?.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
