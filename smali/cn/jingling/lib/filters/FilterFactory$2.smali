.class Lcn/jingling/lib/filters/FilterFactory$2;
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
        "Lcn/jingling/lib/filters/GlobalFilter;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x35bb221cac4918f8L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 331
    const-string/jumbo v0, "viberation"

    const-class v1, Lcn/jingling/lib/filters/global/Viberation;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "lomodrag"

    const-class v1, Lcn/jingling/lib/filters/global/LomoDrag;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v0, "testskin"

    const-class v1, Lcn/jingling/lib/filters/global/TestSkin;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v0, "colortemperature"

    const-class v1, Lcn/jingling/lib/filters/global/ColorTemperature;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v0, "smoothskin"

    const-class v1, Lcn/jingling/lib/filters/global/SmoothSkin;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "betterskin"

    const-class v1, Lcn/jingling/lib/filters/global/BetterSkin;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "brightness"

    const-class v1, Lcn/jingling/lib/filters/global/Brightness;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, "contrast"

    const-class v1, Lcn/jingling/lib/filters/global/Contrast;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string/jumbo v0, "saturation"

    const-class v1, Lcn/jingling/lib/filters/global/Saturation;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string/jumbo v0, "sharpen"

    const-class v1, Lcn/jingling/lib/filters/global/Sharpen;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v0, "eyeenlargeauto"

    const-class v1, Lcn/jingling/lib/filters/global/EyeEnlargeAuto;

    invoke-virtual {p0, v0, v1}, Lcn/jingling/lib/filters/FilterFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
