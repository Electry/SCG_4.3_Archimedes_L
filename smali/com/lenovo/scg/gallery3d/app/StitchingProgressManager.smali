.class public Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;
.super Ljava/lang/Object;
.source "StitchingProgressManager.java"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 0
    .param p1, "app"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/lenovo/scg/gallery3d/app/StitchingChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/gallery3d/app/StitchingChangeListener;

    .prologue
    .line 26
    return-void
.end method

.method public getProgress(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeChangeListener(Lcom/lenovo/scg/gallery3d/app/StitchingChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/gallery3d/app/StitchingChangeListener;

    .prologue
    .line 29
    return-void
.end method
