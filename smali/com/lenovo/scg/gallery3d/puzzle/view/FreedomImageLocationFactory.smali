.class public Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;
.super Ljava/lang/Object;
.source "FreedomImageLocationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$1;,
        Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;,
        Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;


# instance fields
.field private mDensity:F

.field private mFreedomTemplate:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mInstance:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mDensity:F

    .line 29
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mFreedomTemplate:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mFreedomTemplate:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;

    .line 32
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 34
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mDensity:F

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;

    .prologue
    .line 15
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mDensity:F

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-class v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mInstance:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mInstance:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;

    .line 25
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mInstance:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getFreedomImageLocationList(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;
    .locals 49
    .param p1, "imageNum"    # Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .prologue
    .line 38
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v38, "templateLocList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;>;"
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$1;->$SwitchMap$com$lenovo$scg$gallery3d$puzzle$mosaic$PhotoMosaic$ImageNum:[I

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 393
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mFreedomTemplate:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->setTemplateLocList(Ljava/util/ArrayList;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->mFreedomTemplate:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;

    return-object v2

    .line 41
    :pswitch_0
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v44, "twoLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x43055555

    const v4, 0x42e95555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43480000    # 200.0f

    const v4, 0x43855555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v45, "twoLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x42e95555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x43855555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v46, "twoLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43480000    # 200.0f

    const v4, 0x42e95555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x43055555

    const v4, 0x43855555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v47, "twoLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x43055555

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43480000    # 200.0f

    const v4, 0x438daaab

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    move-object/from16 v0, v38

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v48, "twoLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x42e95555

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x43855555

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 69
    .end local v44    # "twoLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v45    # "twoLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v46    # "twoLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v47    # "twoLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v48    # "twoLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    :pswitch_1
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v39, "threeLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x42855555

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42995555

    const v4, 0x43855555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x43735555

    const v4, 0x43855555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v40, "threeLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x433e0000    # 190.0f

    const v4, 0x42855555

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42ad5555

    const v4, 0x43375555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x43415555

    const v4, 0x43995555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v41, "threeLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42ad5555

    const v4, 0x42855555

    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43200000    # 160.0f

    const v4, 0x43375555

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x434eaaab

    const v4, 0x43995555

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v42, "threeLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x434eaaab

    const v4, 0x42855555

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43200000    # 160.0f

    const v4, 0x43375555

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42ad5555

    const v4, 0x43995555

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v43, "threeLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43200000    # 160.0f

    const v4, 0x42855555

    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43200000    # 160.0f

    const v4, 0x43375555

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43200000    # 160.0f

    const v4, 0x43995555

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 101
    .end local v39    # "threeLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v40    # "threeLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v41    # "threeLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v42    # "threeLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v43    # "threeLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    :pswitch_2
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v18, "fourLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42995555

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x43735555

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42995555

    const v4, 0x43855555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x43735555

    const v4, 0x43855555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v19, "fourLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x42b40000    # 90.0f

    const v4, 0x42855555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x42b40000    # 90.0f

    const v4, 0x43375555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x42b40000    # 90.0f

    const v4, 0x43995555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x43695555

    const v4, 0x43375555

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v20, "fourLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x42855555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x42b40000    # 90.0f

    const v4, 0x43375555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x43375555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x43a1aaab

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v21, "fourLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43200000    # 160.0f

    const/high16 v4, 0x43200000    # 160.0f

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43480000    # 200.0f

    const v4, 0x4376aaab

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x43695555

    const v4, 0x43a6aaab

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v22, "fourLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43200000    # 160.0f

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43200000    # 160.0f

    const/high16 v4, 0x43200000    # 160.0f

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43200000    # 160.0f

    const v4, 0x4376aaab

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43200000    # 160.0f

    const v4, 0x43a6aaab

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 137
    .end local v18    # "fourLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v19    # "fourLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v20    # "fourLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v21    # "fourLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v22    # "fourLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    :pswitch_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v13, "fiveLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6999a    # 83.3f

    const v4, 0x42853333    # 66.6f

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x42853333    # 66.6f

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x4330aaab

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v14, "fiveLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x42fd5555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x438daaab

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x43a6aaab

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v15, "fiveLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x42fd5555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x438daaab

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x43a6aaab

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    move-object/from16 v0, v38

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v16, "fiveLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x42855555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x4326aaab

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x4326aaab

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x43805555

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x43abaaab

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v17, "fiveLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x42855555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x4326aaab

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x4326aaab

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x438daaab

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x438daaab

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 178
    .end local v13    # "fiveLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v14    # "fiveLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v15    # "fiveLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v16    # "fiveLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v17    # "fiveLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    :pswitch_4
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v33, "sixLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x42855555

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x42855555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x4330aaab

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x4330aaab

    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v34, "sixLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const/high16 v4, 0x43160000    # 150.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x43160000    # 150.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const/high16 v4, 0x437a0000    # 250.0f

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x437a0000    # 250.0f

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x43ad5555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v35, "sixLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x42d55555

    const/high16 v5, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x42b40000    # 90.0f

    const v4, 0x432d5555

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x43695555

    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x42b40000    # 90.0f

    const v4, 0x438daaab

    const/high16 v5, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x43ad5555

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v36, "sixLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x42855555

    const/high16 v5, -0x3e380000    # -25.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x42855555

    const/high16 v5, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x4330aaab

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x4330aaab

    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, -0x3e380000    # -25.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v37, "sixLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x42855555

    const/high16 v5, -0x3e380000    # -25.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x42855555

    const/high16 v5, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const v4, 0x4330aaab

    const/high16 v5, -0x3e380000    # -25.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const v4, 0x4330aaab

    const/high16 v5, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x42a6aaab

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, -0x3e380000    # -25.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 224
    .end local v33    # "sixLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v34    # "sixLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v35    # "sixLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v36    # "sixLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v37    # "sixLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    :pswitch_5
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v28, "sevenLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4326aaab

    const/high16 v5, 0x42700000    # 60.0f

    const/4 v6, 0x0

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, -0x3fc00000    # -3.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, -0x40800000    # -1.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x43a35555

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x43a35555

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v29, "sevenLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42b40000    # 90.0f

    const v5, 0x4262aaab

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, -0x3fc00000    # -3.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42b40000    # 90.0f

    const v5, 0x43195555

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x4344aaab

    const/high16 v6, -0x40800000    # -1.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42b40000    # 90.0f

    const v5, 0x437d5555

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42b40000    # 90.0f

    const v5, 0x43ad5555

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v30, "sevenLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x42855555

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x42855555

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x432a0000    # 170.0f

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x432a0000    # 170.0f

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x4388aaab

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x4388aaab

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4326aaab

    const v5, 0x43ad5555

    const/4 v6, 0x0

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v31, "sevenLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x42855555

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x42855555

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x432a0000    # 170.0f

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x432a0000    # 170.0f

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x4388aaab

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x4388aaab

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4326aaab

    const v5, 0x43ad5555

    const/4 v6, 0x0

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v32, "sevenLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, -0x3fc00000    # -3.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, -0x40800000    # -1.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v3, 0x4326aaab

    const v4, 0x43a35555

    const v5, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFF)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 275
    .end local v28    # "sevenLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v29    # "sevenLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v30    # "sevenLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v31    # "sevenLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v32    # "sevenLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    :pswitch_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v8, "eightLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, -0x3fc00000    # -3.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, -0x40800000    # -1.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x43a85555

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x43a85555

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v9, "eightLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x42855555

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x42855555

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x4326aaab

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x4326aaab

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x43855555

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x43855555

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x43ad5555

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x43ad5555

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v10, "eightLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x42855555

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x42855555

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x4326aaab

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x4326aaab

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x43805555

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x43805555

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x43ad5555

    const/high16 v6, 0x41c80000    # 25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x43ad5555

    const/high16 v6, -0x3e380000    # -25.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v11, "eightLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x41200000    # 10.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, -0x3ee00000    # -10.0f

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, -0x3fc00000    # -3.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, -0x40800000    # -1.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x43a85555

    const/high16 v6, -0x3ee00000    # -10.0f

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x43a85555

    const/high16 v6, 0x41200000    # 10.0f

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v12, "eightLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42700000    # 60.0f

    const/4 v6, 0x0

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x43695555

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, -0x80000000

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42ad5555

    const/high16 v5, 0x43160000    # 150.0f

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x43695555

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, -0x80000000

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42ad5555

    const/high16 v5, 0x43700000    # 240.0f

    const/4 v6, 0x0

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x436caaab

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, -0x80000000

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x43a85555

    const/high16 v6, -0x80000000

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x43a85555

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 331
    .end local v8    # "eightLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v9    # "eightLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v10    # "eightLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v11    # "eightLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    .end local v12    # "eightLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    :pswitch_7
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v23, "nineLocationList0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4262aaab

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, -0x3fc00000    # -3.0f

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43200000    # 160.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v6, 0x0

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4383aaab

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4262aaab

    const v5, 0x43415555

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43200000    # 160.0f

    const v5, 0x43415555

    const/4 v6, 0x0

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4383aaab

    const v5, 0x43415555

    const/high16 v6, -0x3fc00000    # -3.0f

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4262aaab

    const v5, 0x43ad5555

    const/high16 v6, -0x3fc00000    # -3.0f

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43200000    # 160.0f

    const v5, 0x43ad5555

    const/4 v6, 0x0

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4383aaab

    const v5, 0x43ad5555

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v24, "nineLocationList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4292aaab

    const v5, 0x4292aaab

    const/high16 v6, -0x3ee00000    # -10.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4376aaab

    const v5, 0x4292aaab

    const/high16 v6, 0x41200000    # 10.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v5, 0x43200000    # 160.0f

    const/high16 v6, -0x3f000000    # -8.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4376aaab

    const/high16 v5, 0x43200000    # 160.0f

    const/high16 v6, 0x41000000    # 8.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42995555

    const v5, 0x4376aaab

    const/high16 v6, -0x3f400000    # -6.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x43735555

    const v5, 0x4376aaab

    const/high16 v6, 0x40c00000    # 6.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x43ad5555

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x436caaab

    const v5, 0x43ad5555

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4326aaab

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v25, "nineLocationList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4292aaab

    const v5, 0x4292aaab

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4376aaab

    const v5, 0x4292aaab

    const/high16 v6, -0x3fc00000    # -3.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4292aaab

    const/high16 v5, 0x43200000    # 160.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4376aaab

    const/high16 v5, 0x43200000    # 160.0f

    const/high16 v6, -0x40800000    # -1.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4292aaab

    const v5, 0x4376aaab

    const/high16 v6, -0x40000000    # -2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4376aaab

    const v5, 0x4376aaab

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4292aaab

    const v5, 0x43ad5555

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4376aaab

    const v5, 0x43ad5555

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4326aaab

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v26, "nineLocationList3":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4326aaab

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42b40000    # 90.0f

    const v5, 0x42fd5555

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x42fd5555

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43480000    # 200.0f

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43480000    # 200.0f

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42b40000    # 90.0f

    const v5, 0x438a5555

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x438a5555

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42b40000    # 90.0f

    const v5, 0x43ad5555

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x43ad5555

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v27, "nineLocationList4":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x4326aaab

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v6, 0x0

    const v7, 0x3f19999a    # 0.6f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x42dc0000    # 110.0f

    const/4 v6, 0x0

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43660000    # 230.0f

    const/high16 v5, 0x42dc0000    # 110.0f

    const/4 v6, 0x0

    const v7, 0x3f333333    # 0.7f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42baaaab

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x436caaab

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43820000    # 260.0f

    const/4 v6, 0x0

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x43695555

    const/high16 v5, 0x43820000    # 260.0f

    const/4 v6, 0x0

    const v7, 0x3f666666    # 0.9f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const v4, 0x42a6aaab

    const v5, 0x43ad5555

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    const/high16 v4, 0x43700000    # 240.0f

    const v5, 0x43ad5555

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
