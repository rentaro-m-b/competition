import com.thoughtworks.gauge.Step

class StepImplementationKt {
    @Step("Say <greeting> to <product name>")
    fun helloWorld(greeting: String?, name: String?): String {
        return "$greeting, $name"
    }
}