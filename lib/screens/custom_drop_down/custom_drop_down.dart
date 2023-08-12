import 'package:custom_drop_down/screens/bloc/drop_down_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDropDownPage extends StatefulWidget {
  const CustomDropDownPage({super.key});

  @override
  State<CustomDropDownPage> createState() => _CustomDropDownPageState();
}

class _CustomDropDownPageState extends State<CustomDropDownPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300), // Set your desired duration
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DropDownBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Drop Dwon'),
        ),
        body: BlocConsumer<DropDownBloc, DropDownState>(
          listener: (context, state) {
            if (state.isRememberMe) {
              _animationController.forward();
            } else {
              _animationController.reverse();
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Material(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('INTER NATION SCHOOL С1'),
                      const SizedBox(height: 12),
                      const Text('INTER NATION SCHOOL С1'),
                      const SizedBox(height: 24),
                      SizeTransition(
                        sizeFactor: _animationController,
                        axisAlignment: -1.0,
                        child: const SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('INTER NATION SCHOOL С1'),
                              SizedBox(height: 12),
                              Text('INTER NATION SCHOOL С1'),
                              SizedBox(height: 12),
                              Text('INTER NATION SCHOOL С1'),
                              SizedBox(height: 12),
                              Text('INTER NATION SCHOOL С1'),
                              SizedBox(height: 12),
                              Text('INTER NATION SCHOOL С1'),
                              SizedBox(height: 12),
                              Text('INTER NATION SCHOOL С1'),
                              SizedBox(height: 12),
                              Text('INTER NATION SCHOOL С1'),
                              SizedBox(height: 12),
                              Text('INTER NATION SCHOOL С1'),
                              SizedBox(height: 12),
                              Text('INTER NATION SCHOOL С1'),
                              SizedBox(height: 12),
                              Text('INTER NATION SCHOOL С1'),
                              SizedBox(height: 12),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<DropDownBloc>()
                              .add(const DropDowntStateChangeEvent());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text('Подробно'),
                            const SizedBox(width: 8),
                            Icon(
                              state.isRememberMe
                                  ? Icons.keyboard_arrow_up_rounded
                                  : Icons.keyboard_arrow_down,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
