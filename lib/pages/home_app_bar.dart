import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "HXXSTELLA",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Gap(32),
          if (MediaQuery.of(context).size.width > 1200)
            Row(
              children: [
                Text(
                  'NEW',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Gap(16),
                Text(
                  'HOME',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Gap(16),
                Text(
                  '대규모 콘텐츠',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Gap(16),
                Text(
                  '공개 예정',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          const Spacer(),
          if (MediaQuery.of(context).size.width > 1200)
            Row(
              children: [
                // text field min 50, max width * 0.2
                Container(
                  constraints: BoxConstraints(
                    minWidth: 50,
                    maxWidth: MediaQuery.of(context).size.width * 0.2,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '검색',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Icon(Icons.notifications),
              ],
            ),
          const SizedBox(width: 16),
          const CircleAvatar(
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage('https://picsum.photos/200'),
          ),
          const SizedBox(width: 16),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('로그아웃'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
