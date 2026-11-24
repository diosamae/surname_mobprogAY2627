# Duskly – Mobile Programming Lab Activity

## Laboratory Discussion

### How I managed the posts and notifications efficiently
I created reusable widgets (`NewsfeedCard` and `NotificationTile`) and fed them
data through constructor parameters. Instead of writing 10 post widgets by hand,
I stored the data in a list and used `ListView.builder` to build each card from
it. For the 20 notifications, I used `List.generate` with lists of names and
actions that cycle, so I didn't have to write each notification manually. This
keeps the code short, avoids repetition, and makes it easy to add or edit posts.

### How I accomplished the enhancements
- **Enhancement 1 (dynamic post):** `NewsfeedCard` accepts likes, comments,
  shares, a date, and a `hasPlaceholder` flag that shows or hides the image box.
- **Enhancement 2 (dynamic AppBar title):** The title is read from a `_titles`
  list using the selected tab index.
- **Enhancement 3 (more nav items):** I expanded the BottomNavigationBar to 5 items.
- **Enhancement 4 (app name):** I set `appName` in `constants.dart` and updated
  the Android and web labels.
- **Enhancement 5 (color palette):** I replaced the colors in `constants.dart`
  with my chosen palette and applied them through the theme.

### Challenges and how I addressed them
1. **Gradle/AGP version error:** The build failed because the Android Gradle
   Plugin was 9.1.0 and Flutter needed at least 9.1.1. I updated the version in
   `android/settings.gradle.kts`.
2. **Emulator lag:** The Android emulator froze my laptop ("System UI isn't
   responding"). I ran the app on Chrome with `flutter run -d chrome` instead.
3. **Naming conflict:** Flutter already has a `Notification` class, so I named
   my widget `NotificationTile`.
4. *(Add your own: for example, keeping the tab order consistent with the
   titles list, or Scaffold nesting.)*