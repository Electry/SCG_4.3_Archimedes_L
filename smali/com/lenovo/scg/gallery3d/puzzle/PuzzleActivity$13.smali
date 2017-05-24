.class synthetic Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$13;
.super Ljava/lang/Object;
.source "PuzzleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lenovo$scg$gallery3d$puzzle$mosaic$PhotoMosaic$MosaicMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 307
    invoke-static {}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->values()[Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$13;->$SwitchMap$com$lenovo$scg$gallery3d$puzzle$mosaic$PhotoMosaic$MosaicMode:[I

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$13;->$SwitchMap$com$lenovo$scg$gallery3d$puzzle$mosaic$PhotoMosaic$MosaicMode:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$13;->$SwitchMap$com$lenovo$scg$gallery3d$puzzle$mosaic$PhotoMosaic$MosaicMode:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$13;->$SwitchMap$com$lenovo$scg$gallery3d$puzzle$mosaic$PhotoMosaic$MosaicMode:[I

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
