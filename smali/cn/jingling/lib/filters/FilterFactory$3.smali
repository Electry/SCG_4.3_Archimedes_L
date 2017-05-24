.class Lcn/jingling/lib/filters/FilterFactory$3;
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
        "Lcn/jingling/lib/filters/PartialFilter;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2b8c57eb19ecd729L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 358
    const-string/jumbo v0, "whelkremove2"

    const-class v1, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string/jumbo v0, "thin"

    const-class v1, Lcn/jingling/lib/filters/partial/Thin;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v0, "eyeenlarge"

    const-class v1, Lcn/jingling/lib/filters/partial/EyeEnlarge;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v0, "whelkremove"

    const-class v1, Lcn/jingling/lib/filters/partial/WhelkRemove;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v0, "crop"

    const-class v1, Lcn/jingling/lib/filters/partial/Crop;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v0, "blackeyeremove"

    const-class v1, Lcn/jingling/lib/filters/partial/BlackEyeRemove;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string/jumbo v0, "redeyeremove"

    const-class v1, Lcn/jingling/lib/filters/partial/RedEyeRemove;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v0, "backgroundblurround"

    const-class v1, Lcn/jingling/lib/filters/partial/BackGroundBlurRound;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v0, "backgroundblurline"

    const-class v1, Lcn/jingling/lib/filters/partial/BackGroundBlurLine;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
