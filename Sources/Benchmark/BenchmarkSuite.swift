public class BenchmarkSuite {
    public let name: String
    public var benchmarks: [AnyBenchmark] = []

    public init(name: String) {
        self.name = name
    }

    public func register(benchmark: AnyBenchmark) {
        benchmarks.append(benchmark)
    }

    public func benchmark(_ name: String, _ f: @escaping () -> Void) {
        let benchmark = ClosureBenchmark(name, f)
        register(benchmark: benchmark)
    }
}

var defaultBenchmarkSuite = BenchmarkSuite(name: "")