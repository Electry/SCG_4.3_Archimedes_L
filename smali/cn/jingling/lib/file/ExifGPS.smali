.class public Lcn/jingling/lib/file/ExifGPS;
.super Ljava/lang/Object;
.source "ExifGPS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized convert(D)Ljava/lang/String;
    .locals 10
    .param p0, "latitude"    # D

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 36
    const-class v5, Lcn/jingling/lib/file/ExifGPS;

    monitor-enter v5

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 37
    double-to-int v0, p0

    .line 38
    .local v0, "degree":I
    mul-double/2addr p0, v8

    .line 39
    int-to-double v6, v0

    mul-double/2addr v6, v8

    sub-double/2addr p0, v6

    .line 40
    double-to-int v1, p0

    .line 41
    .local v1, "minute":I
    mul-double/2addr p0, v8

    .line 42
    int-to-double v6, v1

    mul-double/2addr v6, v8

    sub-double/2addr p0, v6

    .line 43
    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, p0

    double-to-int v3, v6

    .line 45
    .local v3, "second":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v4, "/1,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v4, "/1,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v4, "/1000,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 36
    .end local v0    # "degree":I
    .end local v1    # "minute":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "second":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static latitudeRef(D)Ljava/lang/String;
    .locals 2
    .param p0, "latitude"    # D

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "S"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method public static longitudeRef(D)Ljava/lang/String;
    .locals 2
    .param p0, "longitude"    # D

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "W"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "E"

    goto :goto_0
.end method
