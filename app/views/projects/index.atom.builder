atom_feed do |feed|
  feed.title "Kosmyka Portafolio"
  feed.updated @projects.maximum(:launched)

  @projects.each do |project|
    feed.entry project, published: project.launched do |entry|
      entry.title project.name
      entry.content project.description
      entry.link project.url
      entry.author do |author|
        author.name project.client
      end
    end
  end
end
