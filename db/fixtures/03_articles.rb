@fixtures = File.join(Rails.root, "db", "fixtures")
@index = 0
def id
  @index += 1
end

def fetch_body_content(filename)
  File.read(File.join(@fixtures, "articles", "#{filename}.html")) rescue ''
end

def get_image(name)
  File.open(File.join(@fixtures, 'images', "#{name}.jpg"))
end

body_2 = ""

Article.seed(:id,
  {
    :id             => id,
    :title          => "Learning: It's So Hot Right Now",
    :body           => fetch_body_content('learning-its-so-hot'),
    :body_2         => "",
    :headline       => "This season, Epsilon managers are going back to the basics: learning and growth. ",
    :tag_list       => "Growing",
    :category_id    => Category.find_by_short_name("Growing").id,
    :image          => get_image('learning-its-so-hot'),
    :thumbnail      => get_image('thumb-learning-its-so-hot')
  },
  {
    :id             => id,
    :title          => "Skills to Pay the Bills",
    :body           => fetch_body_content('skills-to-pay'),
    :body_2         => '',
    :headline       => 'What makes a great manager? Is it a job title, a state of mind, or a list of accomplishments?',
    :tag_list       => "Growing",
    :category_id    => Category.find_by_short_name("Growing").id,
    :image          => get_image('skills-to-pay-the-bills'),
    :thumbnail      => get_image('thumb-skills-to-pay-the-bills')
  },
  {
    :id             => id,
    :title          => "Sharing is Caring",
    :body           => fetch_body_content('sharing-is-caring'),
    :body_2         => '',
    :headline       => "It’s a familiar story: tight deadlines, demanding clients, few resources and unforgiving budgets.",
    :tag_list       => "Fueling",
    :category_id    => Category.find_by_short_name("Fueling").id,
    :image          => get_image('sharing-is-caring'),
    :thumbnail      => get_image('thumb-sharing-is-caring')
  },
  {
    :id             => id,
    :title          => 'Feed Their Fire',
    :body           => fetch_body_content('feed-their-fire'),
    :body_2         => '',
    :headline       => 'Great Epsilon managers know how important it is to help associates grow.',
    :tag_list       => "Fueling",
    :category_id    => Category.find_by_short_name("Fueling").id,
    :image          => get_image('feed-their-fire'),
    :thumbnail      => get_image('thumb-feed-their-fire')
  },
  {
    :id             => id,
    :title          => "The Tough Stuff",
    :body           => fetch_body_content('tough-stuff'),
    :body_2         => fetch_body_content('tough-stuff-2'),
    :headline       => 'Having tough conversations is the most challenging part of any manager’s job.',
    :tag_list       => "Setting",
    :category_id    => Category.find_by_short_name("Setting").id,
    :image          => get_image('the-tough-stuff'),
    :thumbnail      => get_image('thumb-the-tough-stuff')
  },
  {
    :id             => id,
    :title          => "Mistakes Happen",
    :body           => fetch_body_content('mistakes-happen'),
    :headline       => "Mess-ups. Errors. Blunders. Anytime people are involved, mistakes are bound to happen.",
    :tag_list       => "Setting",
    :category_id    => Category.find_by_short_name("Setting").id,
    :image          => get_image('mistakes-happen'),
    :thumbnail      => get_image('thumb-mistakes-happen')
  },
  {
    :id             => id,
    :title          => "Listen Up, Coach",
    :body           => fetch_body_content('listen-up-coach'),
    :body_2         => body_2,
    :headline       => "As a manager, Epsilon expects you to be an effective coach.",
    :tag_list       => "Coaching",
    :category_id    => Category.find_by_short_name("Coaching").id,
    :image          => get_image('listen-up-coach'),
    :thumbnail      => get_image('thumb-listen-up-coach')
  },
  {
    :id             => id,
    :title          => "Get to Know Me",
    :body           => fetch_body_content('get-to-know-me'),
    :headline       => 'Being a great manager means knowing your people.',
    :tag_list       => "Coaching",
    :category_id    => Category.find_by_short_name("Coaching").id,
    :image          => get_image('get-to-know-me'),
    :thumbnail      => get_image('thumb-get-to-know-me')
  },
  {
    :id             => id,
    :title          => 'Guiding Others is Valuable Work ',
    :body           => fetch_body_content('guiding-others-is-valuable-work'),
    :headline       => 'Before you were a manager, your job was to get work done.',
    :tag_list       => "Delegate",
    :category_id    => Category.find_by_short_name("Balance").id,
    :image          => get_image('guiding-others-is-valuable-work'),
    :thumbnail      => get_image('thumb-guiding-others-is-valuable-work')
  },
  {
    :id             => id,
    :title          => 'Letting Go',
    :body           => fetch_body_content('letting-go'),
    :headline       => 'You know the old phrase, “If you want something done right, you’ve got to do it yourself”.',
    :tag_list       => "Delegate",
    :category_id    => Category.find_by_short_name("Balance").id,
    :image          => get_image('letting-go'),
    :thumbnail      => get_image('thumb-letting-go')
  },
  {
    :id             => id,
    :title          => 'Thank You and Beyond',
    :body           => fetch_body_content('thank-you-and-beyond'),
    :headline       => 'Tight deadlines. Demanding clients. Trim budgets. Slim resources.',
    :tag_list       => "Creating",
    :category_id    => Category.find_by_short_name("Creating").id,
    :image          => get_image('thank-you-and-beyond'),
    :thumbnail      => get_image('thumb-thank-you-and-beyond')
  },
  {
    :id             => id,
    :title          => 'Make It Meaningful',
    :body           => fetch_body_content('make-it-meaningful'),
    :headline       => 'Effective managers know that “meaningful recognition” is a very subjective term.',
    :tag_list       => "Creating",
    :category_id    => Category.find_by_short_name("Creating").id,
    :image          => get_image('make-it-meaningful'),
    :thumbnail      => get_image('thumb-make-it-meaningful')
  },
)
