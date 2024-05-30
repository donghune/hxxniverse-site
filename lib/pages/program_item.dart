import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/**
 * hobaektown.png
    hwashin.png
    redfog1.png
    redfog2.png
    take.png
    당신은시민입니다.png
    치즈고등학교.png
 */
final List<Program> programs = [
  Program(
    backgroundImage: "assets/images/background.png",
    logoImage: "assets/images/호백타운 로고.png",
    contentDate: "2024.07",
    logoName: "HXXSTELLA",
    contentDescription:
        "하나의 도심에서 나만의 집, 회사를 꾸리고 운영을 할 수 있다.\n서로 다른 직업을 통해 교류하고 서로 발전해 나가며 힐링을 즐긴다.\n후니버스에서 처음으로 선보이는 대규모 스트리머 콘텐츠 서버이다.",
    buttonText: "사전예약",
    buttonDescription: "2024년 5월 19일 사전예약",
  ),
  Program(
    backgroundImage: "assets/images/hwashin.png",
    logoImage: "assets/images/hwashin.png",
    contentDate: "2024.07",
    logoName: "화신",
    contentDescription:
        "화신은 신비로운 힘을 가진 캐릭터들이 모여 대결을 펼치는 스토리로, 흥미진진한 전투와 모험이 가득하다.",
    buttonText: "사전예약",
    buttonDescription: "2024년 5월 19일 사전예약",
  ),
  Program(
    backgroundImage: "assets/images/redfog1.png",
    logoImage: "assets/images/redfog1.png",
    contentDate: "2024.07",
    logoName: "붉은 안개 시즌1",
    contentDescription:
        "붉은 안개 시즌1은 서스펜스와 미스터리로 가득한 이야기로, 주인공들이 붉은 안개의 비밀을 풀어나가는 과정을 그린다.",
    buttonText: "사전예약",
    buttonDescription: "2024년 5월 19일 사전예약",
  ),
  Program(
    backgroundImage: "assets/images/redfog2.png",
    logoImage: "assets/images/redfog2.png",
    contentDate: "2024.07",
    logoName: "붉은 안개 시즌2",
    contentDescription: "붉은 안개 시즌2는 시즌1의 이야기를 이어가며, 더욱 복잡하고 흥미로운 사건들이 펼쳐진다.",
    buttonText: "사전예약",
    buttonDescription: "2024년 5월 19일 사전예약",
  ),
  Program(
    backgroundImage: "assets/images/take.png",
    logoImage: "assets/images/take.png",
    contentDate: "2024.07",
    logoName: "테이크",
    contentDescription:
        "테이크는 스릴 넘치는 액션과 모험이 가득한 이야기로, 주인공이 세상을 구하기 위해 펼치는 여정을 그린다.",
    buttonText: "사전예약",
    buttonDescription: "2024년 5월 19일 사전예약",
  ),
  Program(
    backgroundImage: "assets/images/당신은시민입니다.png",
    logoImage: "assets/images/당신은시민입니다.png",
    contentDate: "2024.07",
    logoName: "당신은 시민입니다",
    contentDescription: "당신은 시민입니다는 플레이어가 시민으로서 다양한 임무를 수행하며 도시를 지켜나가는 스토리이다.",
    buttonText: "사전예약",
    buttonDescription: "2024년 5월 19일 사전예약",
  ),
  Program(
    backgroundImage: "assets/images/치즈고등학교.png",
    logoImage: "assets/images/치즈고등학교.png",
    contentDate: "2024.07",
    logoName: "치즈고등학교",
    contentDescription:
        "치즈고등학교는 고등학교를 배경으로 한 유쾌하고 재미있는 이야기로, 학생들의 우정과 모험을 그린다.",
    buttonText: "사전예약",
    buttonDescription: "2024년 5월 19일 사전예약",
  ),
];

class Program {
  const Program({
    required this.backgroundImage,
    required this.logoImage,
    required this.contentDate,
    required this.logoName,
    required this.contentDescription,
    required this.buttonText,
    required this.buttonDescription,
  });

  final String backgroundImage;
  final String logoImage;
  final String contentDate;
  final String logoName;
  final String contentDescription;
  final String buttonText;
  final String buttonDescription;
}

class ProgramItem extends StatelessWidget {
  const ProgramItem({
    super.key,
    required this.program,
  });

  final Program program;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.topRight,
      children: [
        Image.asset(
          program.backgroundImage,
          fit: BoxFit.fitHeight,
          height: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                program.logoImage,
                height: 200,
                width: 300,
              ),
              Row(
                children: [
                  Text(
                    program.contentDate,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Gap(16),
                  Text(
                    program.logoName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              const Gap(16),
              Text(
                program.contentDescription,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: MediaQuery.sizeOf(context).width > 600
                          ? Colors.white
                          : Colors.black,
                    ),
              ),
              const Gap(32),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: Text(program.buttonText)),
                  const Gap(16),
                  Text(
                    program.buttonDescription,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: MediaQuery.sizeOf(context).width > 600
                              ? Colors.white
                              : Colors.black,
                        ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
