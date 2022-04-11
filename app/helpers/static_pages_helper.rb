module StaticPagesHelper
    def is_daytime?
        (DateTime.now.hour > 6) && (DateTime.now.hour < 20)
    end
end
