.class public Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;
.super Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;
.source "MachineMeasurementConsumer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Machine:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 13
    return-void
.end method


# virtual methods
.method public consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .locals 0
    .parameter "measurement"

    .prologue
    .line 21
    return-void
.end method

.method protected formatMetricName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "name"

    .prologue
    .line 17
    return-object p1
.end method

.method public onHarvest()V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->sampleMemory()Lcom/newrelic/agent/android/tracing/Sample;

    move-result-object v1

    .line 27
    .local v1, memorySample:Lcom/newrelic/agent/android/tracing/Sample;
    if-eqz v1, :cond_0

    .line 28
    new-instance v0, Lcom/newrelic/agent/android/metric/Metric;

    const-string v2, "Memory/Used"

    invoke-direct {v0, v2}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, memoryMetric:Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/tracing/Sample;->getValue()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/metric/Metric;->sample(D)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    .line 33
    .end local v0           #memoryMetric:Lcom/newrelic/agent/android/metric/Metric;
    :cond_0
    invoke-super {p0}, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->onHarvest()V

    .line 34
    return-void
.end method
