.class public Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;
.super Ljava/lang/Object;
.source "SpeedRecord.java"


# static fields
.field public static final length:I = 0xf

.field public static final max_speed:D = 8.0


# instance fields
.field addCount:I

.field record:[[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0xf

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    return-void
.end method


# virtual methods
.method public add(DD)V
    .locals 7
    .param p1, "detadegree"    # D
    .param p3, "time"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    const/16 v0, 0xe

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aget-wide v2, v2, v4

    aput-wide v2, v1, v4

    .line 38
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aget-wide v2, v2, v5

    aput-wide v2, v1, v5

    .line 36
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    aget-object v1, v1, v4

    aput-wide p1, v1, v4

    .line 41
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    aget-object v1, v1, v4

    aput-wide p3, v1, v5

    .line 42
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->addCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->addCount:I

    .line 44
    return-void
.end method

.method public getSpeed()D
    .locals 12

    .prologue
    .line 60
    iget v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->addCount:I

    if-nez v8, :cond_0

    .line 61
    const-wide/16 v8, 0x0

    .line 84
    :goto_0
    return-wide v8

    .line 63
    :cond_0
    iget v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->addCount:I

    const/16 v9, 0xf

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 65
    .local v3, "maxIndex":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    aget-object v10, v10, v3

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_1

    .line 66
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    aget-object v10, v10, v3

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    sub-double v0, v8, v10

    .line 70
    .local v0, "detaTime":D
    const-wide/16 v6, 0x0

    .line 71
    .local v6, "sumdegree":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0xe

    if-ge v2, v8, :cond_2

    .line 73
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    aget-object v8, v8, v2

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    :cond_2
    div-double v4, v6, v0

    .line 81
    .local v4, "result":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-lez v8, :cond_3

    .line 82
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    goto :goto_0

    .line 84
    :cond_3
    const-wide/high16 v8, -0x3fe0000000000000L    # -8.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 94
    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->addCount:I

    .line 95
    const/16 v0, 0xe

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    aget-object v1, v1, v0

    aput-wide v4, v1, v3

    .line 97
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->record:[[D

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aput-wide v4, v1, v2

    .line 95
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method
