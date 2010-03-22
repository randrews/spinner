module Spinner
    class << self

        def with_spinner opts={}, &blk
            count = opts[:count] || nil
            message = opts[:message] || "Working..."

            current = 0
            shown = build_string message, current, count
            printf shown

            spin = Proc.new do
                clear shown
                current += 1
                shown = build_string message, current, count
                printf shown
            end

            yield spin

            clear shown
            printf " " * shown.length
            clear shown
        end

        private

        def clear str
            printf "\b" * str.length
        end

        def build_string message, current, total
            char = %w{/ - \\ |}[current % 4]
            str = "#{char} #{message}"

            if total
                percent = current * 100.0 / total
                str += sprintf " %3.2f%%", percent
            end

            str
        end
    end
end
