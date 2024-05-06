import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  int selectedindex = 0;
  int selectedmonth = DateTime.now().month;
  int selectedYear = DateTime.now().year;

  Widget calendarItem(date, day) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedindex = date;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: selectedindex == date ? 4 : 8),
        child: Column(
          children: [
            CircleAvatar(
              radius: selectedindex == date ? 22 : 18,
              backgroundColor: selectedindex == date
                  ? const Color(0xffDFBD43)
                  : const Color(0xFF4D4117),
              child: Text(
                date.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                day,
                style: TextStyle(
                    color: selectedindex == date ? Colors.yellow : Colors.white,
                    fontSize: selectedindex == date ? 16 : 14),
              ),
            )
          ],
        ),
      ),
    );
  }

  List months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  Widget yearList() {
    return Dialog(
        backgroundColor: const Color(0xFF4D4117),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                for (int i = DateTime.now().year;
                    i <= DateTime.now().year + 10;
                    i++)
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedYear = i;
                      });
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Text(i.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ),
                  )
              ]),
        ));
  }

  Widget monthList() {
    return Dialog(
        backgroundColor: const Color(0xFF4D4117),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          constraints: const BoxConstraints(maxHeight: 400),
          child: ListView.builder(
            itemCount: months.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedmonth = index + 1;
                  });
                  Navigator.pop(context);
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Text(
                    months[index],
                    style: TextStyle(
                        color: selectedmonth == index + 1
                            ? Colors.yellow
                            : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              );
            },
          ),
        ));
  }

  List days = [
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context, builder: (context) => yearList());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: const Color(0xFFDFBD43)),
                    ),
                    padding: const EdgeInsets.only(
                        left: 10, right: 5, top: 5, bottom: 5),
                    child: Row(children: [
                      Text(
                        selectedYear.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xffDFBD43),
                      )
                    ]),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context, builder: (context) => monthList());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: const Color(0xFFDFBD43)),
                    ),
                    padding: const EdgeInsets.only(
                        left: 10, right: 5, top: 5, bottom: 5),
                    child: Row(children: [
                      Text(
                        months[selectedmonth - 1],
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xffDFBD43),
                      )
                    ]),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: DateTime(selectedYear, selectedmonth + 1, 0).day,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 25,
                  );
                },
                itemBuilder: (context, index) {
                  return calendarItem(
                      index + 1,
                      days[DateTime(selectedYear, selectedmonth, index + 1)
                              .weekday -
                          1]);
                },
              ),
            ),
          ],
        ));
  }
}
