.class Lcom/lenovo/scg/gallery3d/data/Cluster;
.super Ljava/lang/Object;
.source "TimeClustering.java"


# static fields
.field private static final MMDDYY_FORMAT:Ljava/lang/String; = "MMddyy"

.field private static final TAG:Ljava/lang/String; = "Cluster"


# instance fields
.field public mGeographicallySeparatedFromPrevCluster:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    .line 365
    return-void
.end method


# virtual methods
.method public addItem(Lcom/lenovo/scg/gallery3d/data/SmallItem;)V
    .locals 1
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public generateCaption(Landroid/content/Context;)Ljava/lang/String;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 386
    .local v20, "n":I
    const-wide/16 v4, 0x0

    .line 387
    .local v4, "minTimestamp":J
    const-wide/16 v6, 0x0

    .line 389
    .local v6, "maxTimestamp":J
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    iget-wide v0, v3, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v22, v0

    .line 391
    .local v22, "t":J
    const-wide/16 v12, 0x0

    cmp-long v3, v22, v12

    if-nez v3, :cond_0

    .line 389
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 392
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    if-nez v3, :cond_1

    .line 393
    move-wide/from16 v6, v22

    move-wide/from16 v4, v22

    goto :goto_1

    .line 395
    :cond_1
    move-wide/from16 v0, v22

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 396
    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 399
    .end local v22    # "t":J
    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    if-nez v3, :cond_4

    const-string v2, ""

    .line 435
    :cond_3
    :goto_2
    return-object v2

    .line 402
    :cond_4
    const-string v3, "MMddyy"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 403
    .local v19, "minDay":Ljava/lang/String;
    const-string v3, "MMddyy"

    invoke-static {v3, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 405
    .local v18, "maxDay":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 408
    const/high16 v8, 0x80000

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "caption":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 414
    const v8, 0x10010

    .line 417
    .local v8, "flags":I
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, "dateRangeWithOptionalYear":Ljava/lang/String;
    const v3, 0x10014

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v16

    .line 419
    .local v16, "dateRangeWithYear":Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 424
    add-long v12, v4, v6

    const-wide/16 v24, 0x2

    div-long v10, v12, v24

    .line 425
    .local v10, "midTimestamp":J
    const v14, 0x10011

    move-object/from16 v9, p1

    move-wide v12, v10

    invoke-static/range {v9 .. v14}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 431
    .end local v2    # "caption":Ljava/lang/String;
    .end local v8    # "flags":I
    .end local v10    # "midTimestamp":J
    .end local v15    # "dateRangeWithOptionalYear":Ljava/lang/String;
    .end local v16    # "dateRangeWithYear":Ljava/lang/String;
    :cond_5
    const v8, 0x10030

    .restart local v8    # "flags":I
    move-object/from16 v3, p1

    .line 432
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "caption":Ljava/lang/String;
    goto :goto_2
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastItem()Lcom/lenovo/scg/gallery3d/data/SmallItem;
    .locals 3

    .prologue
    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 377
    .local v0, "n":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
