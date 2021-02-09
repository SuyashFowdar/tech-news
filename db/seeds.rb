# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Category.create([{ name: 'Phone', priority: 1 }, { name: 'Tablet', priority: 2 }, { name: 'Laptop', priority: 3 }, { name: 'Desktop', priority: 4 }, { name: 'Watch', priority: 5 }, { name: 'TV', priority: 6 }])

if ENV["test_data"]
  User.create([{ name: 'John' }, { name: 'Sam' }, { name: 'Tim' }])

  Article.create([{
    title: 'Article 1',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://i.gadgets360cdn.com/large/Samsung_Galaxy_Tab_S6_Cover_1573742802796.jpg?output-quality=80&output-format=webp',
    author_id: 1
  }, {
    title: 'Article 2',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-tablets-kids-1568340982.png?crop=0.740xw:0.740xh;0.141xw,0.212xh&resize=1200:*',
    author_id: 2
  }, {
    title: 'Article 3',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://i1.wp.com/9to5mac.com/wp-content/uploads/sites/6/2020/03/iPad-Pro-Magic-Keyboard-Dock.jpg?w=1500&quality=82&strip=all&ssl=1',
    author_id: 3
  }, {
    title: 'Article 4',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://cdn.pocket-lint.com/r/s/970x/assets/images/147776-phones-review-review-galaxy-fold-full-review-image1-vl1ff9ji0x-jpg.webp',
    author_id: 1
  }, {
    title: 'Article 5',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://cdn.vox-cdn.com/uploads/chorus_asset/file/19206352/akrales_190914_3628_0074.jpg',
    author_id: 2
  }, {
    title: 'Article 6',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://ichef.bbci.co.uk/images/ic/1920x1080/p07vzgrf.jpg',
    author_id: 3
  }, {
    title: 'Article 7',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://marketingland.com/wp-content/ml-loads/2017/10/Main_Image_Phone.jpg',
    author_id: 1
  }, {
    title: 'Article 8',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://cdn.mos.cms.futurecdn.net/E2c2C7zAk9irAdtmE9X4Ki-1200-80.jpg',
    author_id: 2
  }, {
    title: 'Article 9',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://bgr.com/wp-content/uploads/2016/07/samsung-smart-tv.jpg?resize=782,440',
    author_id: 3
  }, {
    title: 'Article 10',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://cdn.vox-cdn.com/uploads/chorus_asset/file/9823247/jbareham_171206_2181_0005.jpg',
    author_id: 1
  }, {
    title: 'Article 11',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://www.businessinsider.in/thumb/msid-77859260,width-960,resizemode-4,imgsize-152299/tech-buying-guides/best-premium-smart-tvs-for-home-in-india/tv.jpg',
    author_id: 2
  }, {
    title: 'Article 12',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://prometheanconsult.com/wp-content/uploads/2020/09/VLS_2759.0.jpg',
    author_id: 3
  }, {
    title: 'Article 13',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://prometheanconsult.com/wp-content/uploads/2020/09/X5TyA8uvkGXoNyjFzxcowS-1200-80-1024x576.jpg',
    author_id: 1
  }, {
    title: 'Article 14',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://www.apple.com/newsroom/images/product/os/macos/standard/apple_macos-bigsur_redesignedapps_06222020_LP_hero.jpg.og.jpg',
    author_id: 2
  }, {
    title: 'Article 15',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://i.pcmag.com/imagery/roundups/06o6G8AsNkTfU4iPG42UXTV-23.fit_lim.size_768x.jpg',
    author_id: 3
  }, {
    title: 'Article 16',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://i.pcmag.com/imagery/roundups/06o6G8AsNkTfU4iPG42UXTV-25.fit_lim.size_768x.jpg',
    author_id: 1
  }, {
    title: 'Article 17',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://i.pcmag.com/imagery/roundups/06o6G8AsNkTfU4iPG42UXTV-15.fit_lim.size_768x.jpg',
    author_id: 2
  }, {
    title: 'Article 18',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://i.pcmag.com/imagery/reviews/07LLQWrr7cxOWl7ebgWvNe7-17.1574731215.fit_scale.size_1028x578.jpg',
    author_id: 3
  }, {
    title: 'Article 19',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://images.indianexpress.com/2020/06/smartwatch-759.jpg',
    author_id: 1
  }, {
    title: 'Article 20',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://cdn.mos.cms.futurecdn.net/aGxMDNgHjerEwVCkuapA4Q-970-80.jpeg.webp',
    author_id: 2
  }, {
    title: 'Article 21',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://cdn.mos.cms.futurecdn.net/TFQQG24qM5yqbnbj6P8sdL-970-80.jpg.webp',
    author_id: 3
  }, {
    title: 'Article 22',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: 'https://en.letsgodigital.org/uploads/2020/01/oppo-smartwatches-770x455.jpg',
    author_id: 1
  }])

  ArticleCategory.create([{
    article_id: 1,
    category_id: 2
  }, {
    article_id: 2,
    category_id: 2
  }, {
    article_id: 3,
    category_id: 2
  }, {
    article_id: 4,
    category_id: 2
  }, {
    article_id: 4,
    category_id: 1
  }, {
    article_id: 5,
    category_id: 1
  }, {
    article_id: 6,
    category_id: 1
  }, {
    article_id: 7,
    category_id: 1
  }, {
    article_id: 8,
    category_id: 1
  }, {
    article_id: 9,
    category_id: 6
  }, {
    article_id: 10,
    category_id: 6
  }, {
    article_id: 11,
    category_id: 6
  }, {
    article_id: 12,
    category_id: 3
  }, {
    article_id: 13,
    category_id: 3
  }, {
    article_id: 13,
    category_id: 2
  }, {
    article_id: 14,
    category_id: 3
  }, {
    article_id: 15,
    category_id: 4
  }, {
    article_id: 16,
    category_id: 4
  }, {
    article_id: 17,
    category_id: 4
  }, {
    article_id: 17,
    category_id: 3
  }, {
    article_id: 18,
    category_id: 4
  }, {
    article_id: 19,
    category_id: 5
  }, {
    article_id: 20,
    category_id: 5
  }, {
    article_id: 21,
    category_id: 5
  }, {
    article_id: 22,
    category_id: 5
  }, {
    article_id: 22,
    category_id: 1
  }])

  Vote.create([{
    user_id: 1,
    article_id: 1
  }, {
    user_id: 1,
    article_id: 2
  }, {
    user_id: 2,
    article_id: 5
  }, {
    user_id: 3,
    article_id: 5
  }, {
    user_id: 1,
    article_id: 6
  }, {
    user_id: 2,
    article_id: 6
  }, {
    user_id: 3,
    article_id: 6
  }])
end
