.class public Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;
.super Ljava/lang/Object;
.source "LocalTimeDateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;
    }
.end annotation


# static fields
.field public static final FATURE:Ljava/lang/String; = "Fature"

.field private static final TAG:Ljava/lang/String; = "LocalTimeDateUtil-WYJ"

.field public static final TODAY:Ljava/lang/String; = "Today"

.field public static final WEEK:Ljava/lang/String; = "Week"

.field private static volatile instance:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;


# instance fields
.field private final SYMBOL:Ljava/lang/String;

.field private calendar:Ljava/util/Calendar;

.field private mTimeEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->instance:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 26

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v2, "/"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->SYMBOL:Ljava/lang/String;

    .line 30
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    .line 31
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->mTimeEntry:Ljava/util/ArrayList;

    .line 34
    const-string/jumbo v2, "wwf5"

    const-string v5, "LocalTimeDateUtil start"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->mTimeEntry:Ljava/util/ArrayList;

    .line 37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 38
    .local v3, "year":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 39
    .local v4, "month":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 40
    .local v16, "day":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 42
    .local v25, "week":I
    const-wide/16 v8, 0x0

    .local v8, "startMillion":J
    const-wide/16 v10, 0x0

    .line 43
    .local v10, "endMillion":J
    const-string v12, ""

    .line 45
    .local v12, "name":Ljava/lang/String;
    const-string v12, "Fature"

    .line 46
    const-wide/16 v10, -0x1

    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    add-int/lit8 v5, v16, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 48
    .end local v8    # "startMillion":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 57
    .restart local v8    # "startMillion":J
    cmp-long v2, v8, v10

    if-eqz v2, :cond_0

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->mTimeEntry:Ljava/util/ArrayList;

    new-instance v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;JJLjava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    const-string v12, "Today"

    .line 61
    move-wide v10, v8

    .line 62
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v14, v3

    move v15, v4

    invoke-virtual/range {v13 .. v19}, Ljava/util/Calendar;->set(IIIIII)V

    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 72
    cmp-long v2, v8, v10

    if-eqz v2, :cond_1

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->mTimeEntry:Ljava/util/ArrayList;

    new-instance v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;JJLjava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    const-string v12, "Week"

    .line 76
    move-wide v10, v8

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    sub-int v20, v16, v25

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v23}, Ljava/util/Calendar;->set(IIIIII)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 87
    cmp-long v2, v8, v10

    if-eqz v2, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->mTimeEntry:Ljava/util/ArrayList;

    new-instance v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;JJLjava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    const/16 v19, 0xb

    .local v19, "i":I
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_5

    .line 90
    move/from16 v0, v19

    if-le v0, v4, :cond_4

    .line 89
    :cond_3
    :goto_1
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 91
    :cond_4
    move-wide v10, v8

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v18, v3

    invoke-virtual/range {v17 .. v23}, Ljava/util/Calendar;->set(IIIIII)V

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->getDouble(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 103
    cmp-long v2, v8, v10

    if-eqz v2, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->mTimeEntry:Ljava/util/ArrayList;

    new-instance v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;JJLjava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_5
    add-int/lit8 v19, v3, -0x1

    :goto_2
    const/16 v2, 0x7b2

    move/from16 v0, v19

    if-le v0, v2, :cond_7

    .line 108
    move-wide v10, v8

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v24}, Ljava/util/Calendar;->set(IIIIII)V

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 111
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->getDouble(I)Ljava/lang/String;

    move-result-object v12

    .line 120
    cmp-long v2, v8, v10

    if-eqz v2, :cond_6

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->mTimeEntry:Ljava/util/ArrayList;

    new-instance v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;JJLjava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_6
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 126
    :cond_7
    move-wide v10, v8

    .line 127
    const-wide/16 v8, -0x1

    .line 128
    const-string v12, "1970"

    .line 129
    cmp-long v2, v8, v10

    if-eqz v2, :cond_8

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->mTimeEntry:Ljava/util/ArrayList;

    new-instance v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;JJLjava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_8
    const-string/jumbo v2, "wwf5"

    const-string v5, "LocalTimeDateUtil end"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method private getDouble(I)Ljava/lang/String;
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->instance:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->instance:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->instance:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->instance:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getTimeEntry()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil;->mTimeEntry:Ljava/util/ArrayList;

    return-object v0
.end method
