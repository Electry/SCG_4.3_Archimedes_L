.class public Lcom/lenovo/scg/gallery3d/util/LightCycleHelper;
.super Ljava/lang/Object;
.source "LightCycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaViewHelper;,
        Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;
    }
.end annotation


# static fields
.field public static final NOT_PANORAMA:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    invoke-direct {v0, v1, v1}, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;-><init>(ZZ)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper;->NOT_PANORAMA:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static createStitchingManagerInstance(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;
    .locals 1
    .param p0, "app"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 75
    sget-object v0, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper;->NOT_PANORAMA:Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    return-object v0
.end method

.method public static hasLightCycleCapture(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public static setupCaptureIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "it"    # Landroid/content/Intent;
    .param p2, "outputDir"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method
