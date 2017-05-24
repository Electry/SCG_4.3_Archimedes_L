.class public final Lcom/lenovo/scg/gallery3d/data/DataSourceType;
.super Ljava/lang/Object;
.source "DataSourceType.java"


# static fields
.field private static final LOCAL_ROOT:Lcom/lenovo/scg/gallery3d/data/Path;

.field private static final PICASA_ROOT:Lcom/lenovo/scg/gallery3d/data/Path;

.field public static final TYPE_CAMERA:I = 0x3

.field public static final TYPE_LOCAL:I = 0x1

.field public static final TYPE_NOT_CATEGORIZED:I = 0x0

.field public static final TYPE_PICASA:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "/picasa"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/DataSourceType;->PICASA_ROOT:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 33
    const-string v0, "/local"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/DataSourceType;->LOCAL_ROOT:Lcom/lenovo/scg/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static identifySourceType(Lcom/lenovo/scg/gallery3d/data/MediaSet;)I
    .locals 4
    .param p0, "set"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    const/4 v2, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    .line 41
    .local v0, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->isCameraSource(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->getPrefixPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    .line 45
    .local v1, "prefix":Lcom/lenovo/scg/gallery3d/data/Path;
    sget-object v3, Lcom/lenovo/scg/gallery3d/data/DataSourceType;->PICASA_ROOT:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v1, v3, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    .line 46
    :cond_3
    sget-object v3, Lcom/lenovo/scg/gallery3d/data/DataSourceType;->LOCAL_ROOT:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
