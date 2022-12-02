class AboutData {
  const AboutData({
    required this.title,
    required this.image,
    required this.projects,
  });

  final String? title;
  final String? image;
  final int? projects;
}

List<AboutData> items = [
  const AboutData(
    title: 'Video Editing',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Adobe_Premiere_Pro_CC_icon.svg/2101px-Adobe_Premiere_Pro_CC_icon.svg.png',
    projects: 21,
  ),
  const AboutData(
    title: 'Image Editing',
    image: 'https://seeklogo.com/images/A/adobe-photoshop-logo-7B88D7B5AA-seeklogo.com.png',
    projects: 16,
  ),
  const AboutData(
    title: 'Audio Editing',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Adobe_Audition_CC_icon_%282020%29.svg/1200px-Adobe_Audition_CC_icon_%282020%29.svg.png',
    projects: 22,
  ),
  const AboutData(
    title: 'UI Design',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Adobe_XD_CC_icon.svg/2101px-Adobe_XD_CC_icon.svg.png',
    projects: 24,
  ),
];