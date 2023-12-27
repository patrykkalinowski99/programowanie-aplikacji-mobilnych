import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_todo_app/providers/category_provider.dart';
import 'package:flutter_riverpod_todo_app/utils/utils.dart';
import 'package:flutter_riverpod_todo_app/widgets/widgets.dart';
import 'package:gap/gap.dart';

class CategoriesSelection extends ConsumerWidget {
  const CategoriesSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(categoryProvider);
    final List<TaskCategory> categories = TaskCategory.values.toList();

    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: ListView.separated(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  final category = categories[index];
                  return InkWell(
                    onTap: () {
                      ref.read(categoryProvider.notifier).state = category;
                    },
                    borderRadius: BorderRadius.circular(5),
                    child: CircleContainer(
                      color: category.color.withOpacity(0.5),
                      borderColor: category.color,
                      child: Icon(
                        category.icon,
                        color: selectedCategory == category
                            ? context.colorScheme.primary
                            : category.color.withOpacity(1),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Gap(15),
              ),
          ),
          ),
        ],
      ),
    );
  }
}
