.class public Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;
.super Lcom/lenovo/scg/gallery3d/data/Clustering;
.source "TimeClusteringSuper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$DateComparator;
    }
.end annotation


# static fields
.field public static final CURRENTWEEK_STRING:Ljava/lang/String; = "Week"

.field private static final TAG:Ljava/lang/String;

.field public static final TODAY_STRING:Ljava/lang/String; = "Today"

.field private static final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private iDayNow:I

.field private iMonthNow:I

.field private iYearNow:I

.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNames:[Ljava/lang/String;

.field private mTime2ItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/SmallItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimeArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sCurrentWeek:Ljava/lang/String;

.field private final sDayCap:Ljava/lang/String;

.field private final sMonthCap:Ljava/lang/String;

.field private final sToday:Ljava/lang/String;

.field private final sYearCap:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->TAG:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$DateComparator;-><init>(Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sDateComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/Clustering;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mTimeArr:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mTime2ItemMap:Ljava/util/HashMap;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sYearCap:Ljava/lang/String;

    .line 63
    const-string v0, "/ "

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sMonthCap:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f06e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sDayCap:Ljava/lang/String;

    .line 72
    const-string v0, "Today"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sToday:Ljava/lang/String;

    .line 75
    const-string v0, "Week"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sCurrentWeek:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private getShowDate(JJLjava/util/Calendar;)Ljava/lang/String;
    .locals 23
    .param p1, "lNow"    # J
    .param p3, "lDate"    # J
    .param p5, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 180
    sub-long v10, p1, p3

    .line 181
    .local v10, "lDeta":J
    const-wide/32 v12, 0x5265c00

    .line 183
    .local v12, "lOneDay":J
    :try_start_0
    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 184
    const/16 v18, 0x1

    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 185
    .local v9, "iYearPic":I
    const/16 v18, 0x2

    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v6, v18, 0x1

    .line 186
    .local v6, "iMonthPic":I
    const/16 v18, 0x5

    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 188
    .local v5, "iDayPic":I
    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-gez v18, :cond_1

    .line 189
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, "sYear":Ljava/lang/String;
    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 192
    .local v16, "sMonth":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 193
    .local v15, "sDay":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sMonthCap:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sYearCap:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 195
    .local v14, "sDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->iYearNow:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v9, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->iMonthNow:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->iDayNow:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v5, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sToday:Ljava/lang/String;

    .line 275
    .end local v5    # "iDayPic":I
    .end local v6    # "iMonthPic":I
    .end local v9    # "iYearPic":I
    .end local v14    # "sDate":Ljava/lang/String;
    .end local v15    # "sDay":Ljava/lang/String;
    .end local v16    # "sMonth":Ljava/lang/String;
    .end local v17    # "sYear":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v14

    .line 201
    .restart local v5    # "iDayPic":I
    .restart local v6    # "iMonthPic":I
    .restart local v9    # "iYearPic":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->iYearNow:I

    move/from16 v18, v0

    sub-int v18, v18, v9

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 202
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 204
    .restart local v17    # "sYear":Ljava/lang/String;
    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 205
    .restart local v16    # "sMonth":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sMonthCap:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sYearCap:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 206
    .restart local v14    # "sDate":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v14    # "sDate":Ljava/lang/String;
    .end local v16    # "sMonth":Ljava/lang/String;
    .end local v17    # "sYear":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->iMonthNow:I

    move/from16 v18, v0

    sub-int v18, v18, v6

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->iMonthNow:I

    move/from16 v18, v0

    sub-int v18, v18, v6

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 210
    const/16 v18, 0x3

    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 211
    .local v8, "iWeekPic":I
    move-object/from16 v0, p5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 212
    const/16 v18, 0x3

    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 213
    .local v7, "iWeekNow":I
    if-ne v7, v8, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sCurrentWeek:Ljava/lang/String;

    .line 215
    .restart local v14    # "sDate":Ljava/lang/String;
    goto/16 :goto_0

    .line 218
    .end local v7    # "iWeekNow":I
    .end local v8    # "iWeekPic":I
    .end local v14    # "sDate":Ljava/lang/String;
    :cond_3
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 220
    .restart local v17    # "sYear":Ljava/lang/String;
    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 221
    .restart local v16    # "sMonth":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sMonthCap:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sYearCap:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 222
    .restart local v14    # "sDate":Ljava/lang/String;
    goto/16 :goto_0

    .line 224
    .end local v14    # "sDate":Ljava/lang/String;
    .end local v16    # "sMonth":Ljava/lang/String;
    .end local v17    # "sYear":Ljava/lang/String;
    :cond_4
    const/16 v18, 0x4

    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 225
    .restart local v8    # "iWeekPic":I
    move-object/from16 v0, p5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 226
    const/16 v18, 0x4

    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 227
    .restart local v7    # "iWeekNow":I
    const-string v14, "errorDate"

    .line 258
    .restart local v14    # "sDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->iDayNow:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v5, :cond_5

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sToday:Ljava/lang/String;

    goto/16 :goto_0

    .line 260
    :cond_5
    if-ne v7, v8, :cond_6

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sCurrentWeek:Ljava/lang/String;

    goto/16 :goto_0

    .line 263
    :cond_6
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 265
    .restart local v17    # "sYear":Ljava/lang/String;
    const-string v18, "%02d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 266
    .restart local v16    # "sMonth":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sMonthCap:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sYearCap:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto/16 :goto_0

    .line 272
    .end local v5    # "iDayPic":I
    .end local v6    # "iMonthPic":I
    .end local v7    # "iWeekNow":I
    .end local v8    # "iWeekPic":I
    .end local v9    # "iYearPic":I
    .end local v14    # "sDate":Ljava/lang/String;
    .end local v16    # "sMonth":Ljava/lang/String;
    .end local v17    # "sYear":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 273
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    const-string v14, "errorDate"

    goto/16 :goto_0
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mTimeArr:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 152
    .local v4, "sTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mTime2ItemMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .local v0, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/data/SmallItem;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-object v3
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mTimeArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mTimeArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 14
    .param p1, "baseSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 88
    move-object v0, p1

    .line 90
    .local v0, "allMediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v13, "totalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    const/4 v1, 0x2

    new-array v8, v1, [D

    .line 93
    .local v8, "dLatLng":[D
    :try_start_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;

    invoke-direct {v1, p0, v8, v13}, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper$1;-><init>(Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;[DLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    .local v2, "nowTime":J
    const-string/jumbo v1, "yyyy"

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->iYearNow:I

    .line 124
    const-string v1, "MM"

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->iMonthNow:I

    .line 125
    const-string v1, "dd"

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->iDayNow:I

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 127
    .local v6, "cal":Ljava/util/Calendar;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    .line 128
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .line 129
    .local v11, "item":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    iget-wide v4, v11, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->getShowDate(JJLjava/util/Calendar;)Ljava/lang/String;

    move-result-object v12

    .line 130
    .local v12, "sTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mTime2ItemMap:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 131
    .local v7, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    if-nez v7, :cond_0

    .line 132
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .restart local v7    # "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mTime2ItemMap:Ljava/util/HashMap;

    invoke-virtual {v1, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;->mTimeArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 111
    .end local v2    # "nowTime":J
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    .end local v10    # "i":I
    .end local v11    # "item":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    .end local v12    # "sTime":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 112
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "nowTime":J
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v7    # "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    .restart local v10    # "i":I
    .restart local v11    # "item":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    .restart local v12    # "sTime":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 140
    .end local v7    # "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    .end local v11    # "item":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    .end local v12    # "sTime":Ljava/lang/String;
    :cond_1
    return-void
.end method
