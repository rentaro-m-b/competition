import com.thoughtworks.gauge.Step
import org.assertj.core.api.Assertions.assertThat

class StepImplementation {
    @Step("<actual> is <expected>")
    fun actualIsExpected(actual: String?, expected: String?) {
        assertThat(actual).isEqualTo(expected)
    }
}
