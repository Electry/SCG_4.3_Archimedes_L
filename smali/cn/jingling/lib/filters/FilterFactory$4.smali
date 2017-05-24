.class Lcn/jingling/lib/filters/FilterFactory$4;
.super Ljava/util/HashMap;
.source "FilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/filters/FilterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class",
        "<+",
        "Lcn/jingling/lib/filters/RealsizeFilter;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xecbc6d7cd8bcc65L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 380
    const-string/jumbo v0, "rsoriginal"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSEmptyFilter;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string/jumbo v0, "rsrotate"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSRotate;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v0, "rscounter"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCounterRotate;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v0, "rsansel"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSAnsel;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string/jumbo v0, "rsfliphorizontal"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSFlipHorizontal;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string/jumbo v0, "rscllomo"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraLomoLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v0, "rscliunian"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v0, "rscxuancai"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraXuancai;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string/jumbo v0, "rscdiana"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraDiana;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string/jumbo v0, "rsclfugu"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraFuguLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string/jumbo v0, "rschuiyi"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraHuiyi;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string/jumbo v0, "rsclg3"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraG3Live;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string/jumbo v0, "rsclsutro"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraSutroLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string/jumbo v0, "rsclvivid"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraVividLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v0, "rsclrise"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraRiseLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string/jumbo v0, "rsclwalden"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraWaldenLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string/jumbo v0, "rsclhefe"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string/jumbo v0, "rsclfuguscenery"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraFuguSceneryLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string/jumbo v0, "rscllomoscenery"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraLomoSceneryLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string/jumbo v0, "rscqiuse"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraQiuse;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string/jumbo v0, "rsclenhance"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraSceneEnhance;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string/jumbo v0, "rsclm3"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraM3Live;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string/jumbo v0, "rsclgoldfinch"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraGoldFinchLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string/jumbo v0, "rsclmeadow"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraMeadowLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string/jumbo v0, "rsclfood1"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraFoodLive1;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string/jumbo v0, "rsclfood2"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraFoodLive2;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v0, "rsclfood3"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraFoodLive3;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string/jumbo v0, "rsclfood4"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraFoodLive4;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string/jumbo v0, "rsclfood5"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraFoodLive5;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string/jumbo v0, "rsclfood6"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraFoodLive6;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string/jumbo v0, "rscljiuguan"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraJiuguanLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string/jumbo v0, "rscldushi"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string/jumbo v0, "rsclguangyin"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraGuangyinLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string/jumbo v0, "rsclyazhi"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraYazhiLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string/jumbo v0, "rsclzaoan"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraZaoanLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v0, "rsclvividscenery"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraVividLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string/jumbo v0, "rsclheibai"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraHeibaiLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v0, "rsclcaisefupian"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraCaiSeFuPianLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v0, "rsclmidway"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraMidwayLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v0, "rsclyanli"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraYanliLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string/jumbo v0, "rscllouguang"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v0, "rsprogressive"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSTestYBW;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string/jumbo v0, "rsdecolorization"

    const-class v1, Lcn/jingling/lib/filters/realsize/RSDecolorization;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
