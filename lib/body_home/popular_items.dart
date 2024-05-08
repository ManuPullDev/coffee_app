import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: StainSectionList2(),
    ),
  ));
}

class StainSectionList2 extends StatefulWidget {
  const StainSectionList2({super.key});

  @override
  _StainSectionList2State createState() => _StainSectionList2State();
}

class _StainSectionList2State extends State<StainSectionList2> {
  bool isCheckedFirstCard = false;
  bool isExpandedFirstCard = false;

  bool isCheckedSecondCard = false;
  bool isExpandedSecondCard = false;

  bool isCheckedThirdCard = false;
  bool isExpandedThirdCard = false;

  bool isCheckedFourthCard = false;
  bool isExpandedFourthCard = false;

  bool isCheckedFifthCard = false;
  bool isExpandedFifthCard = false;

  bool isCheckedSixthCard = false;
  bool isExpandedSixthCard = false;

  bool isCheckedSeventhCard = false;
  bool isExpandedSeventhCard = false;

  void toggleExpansionFirstCard() {
    setState(() {
      isExpandedFirstCard = !isExpandedFirstCard;
    });
  }

  void toggleExpansionSecondCard() {
    setState(() {
      isExpandedSecondCard = !isExpandedSecondCard;
    });
  }

  void toggleExpansionThirdCard() {
    setState(() {
      isExpandedThirdCard = !isExpandedThirdCard;
    });
  }

  void toggleExpansionFourthCard() {
    setState(() {
      isExpandedFourthCard = !isExpandedFourthCard;
    });
  }

  void toggleExpansionFifthCard() {
    setState(() {
      isExpandedFifthCard = !isExpandedFifthCard;
    });
  }

  void toggleExpansionSixthCard() {
    setState(() {
      isExpandedSixthCard = !isExpandedSixthCard;
    });
  }

  void toggleExpansionSeventhCard() {
    setState(() {
      isExpandedSeventhCard = !isExpandedSeventhCard;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.all(10), // Ajustez la marge entre les cartes
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: Checkbox(
                  value: isCheckedFirstCard,
                  onChanged: (value) {
                    setState(() {
                      isCheckedFirstCard = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  visualDensity: VisualDensity.compact,
                ),
                title: const Text(
                  "To Do List",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Sous-titre ici",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    isExpandedFirstCard
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onPressed: toggleExpansionFirstCard,
                ),
              ),
              if (isExpandedFirstCard)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Texte supplémentaire ici...",
                  ),
                ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: Checkbox(
                  value: isCheckedSecondCard,
                  onChanged: (value) {
                    setState(() {
                      isCheckedSecondCard = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  visualDensity: VisualDensity.compact,
                ),
                title: const Text(
                  "Second To Do List",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Sous-titre ici",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    isExpandedSecondCard
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onPressed: toggleExpansionSecondCard,
                ),
              ),
              if (isExpandedSecondCard)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Texte supplémentaire ici...",
                  ),
                ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: Checkbox(
                  value: isCheckedThirdCard,
                  onChanged: (value) {
                    setState(() {
                      isCheckedThirdCard = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  visualDensity: VisualDensity.compact,
                ),
                title: const Text(
                  "Third To Do List",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Sous-titre ici",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    isExpandedThirdCard
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onPressed: toggleExpansionThirdCard,
                ),
              ),
              if (isExpandedThirdCard)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Texte supplémentaire ici...",
                  ),
                ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: Checkbox(
                  value: isCheckedFourthCard,
                  onChanged: (value) {
                    setState(() {
                      isCheckedFourthCard = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  visualDensity: VisualDensity.compact,
                ),
                title: const Text(
                  "Fourth To Do List",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Sous-titre ici",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    isExpandedFourthCard
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onPressed: toggleExpansionFourthCard,
                ),
              ),
              if (isExpandedFourthCard)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Texte supplémentaire ici...",
                  ),
                ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: Checkbox(
                  value: isCheckedFifthCard,
                  onChanged: (value) {
                    setState(() {
                      isCheckedFifthCard = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  visualDensity: VisualDensity.compact,
                ),
                title: const Text(
                  "Fifth To Do List",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Sous-titre ici",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    isExpandedFifthCard
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onPressed: toggleExpansionFifthCard,
                ),
              ),
              if (isExpandedFifthCard)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Texte supplémentaire ici...",
                  ),
                ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: Checkbox(
                  value: isCheckedSixthCard,
                  onChanged: (value) {
                    setState(() {
                      isCheckedSixthCard = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  visualDensity: VisualDensity.compact,
                ),
                title: const Text(
                  "Sixth To Do List",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Sous-titre ici",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    isExpandedSecondCard
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onPressed: toggleExpansionSixthCard,
                ),
              ),
              if (isExpandedSixthCard)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Texte supplémentaire ici...",
                  ),
                ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: Checkbox(
                  value: isCheckedSeventhCard,
                  onChanged: (value) {
                    setState(() {
                      isCheckedSeventhCard = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  visualDensity: VisualDensity.compact,
                ),
                title: const Text(
                  "Seventh To Do List",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Sous-titre ici",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    isExpandedSecondCard
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onPressed: toggleExpansionSeventhCard,
                ),
              ),
              if (isExpandedSeventhCard)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Texte supplémentaire ici...",
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}