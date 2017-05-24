.class public Lcom/lenovo/scg/photos/FullscreenViewer;
.super Landroid/app/Activity;
.source "FullscreenViewer.java"


# instance fields
.field private mTextureView:Lcom/lenovo/scg/photos/views/TiledImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/FullscreenViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/scg/photos/views/TiledImageView;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/photos/views/TiledImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/photos/FullscreenViewer;->mTextureView:Lcom/lenovo/scg/photos/views/TiledImageView;

    .line 33
    iget-object v1, p0, Lcom/lenovo/scg/photos/FullscreenViewer;->mTextureView:Lcom/lenovo/scg/photos/views/TiledImageView;

    new-instance v2, Lcom/lenovo/scg/photos/BitmapRegionTileSource;

    invoke-direct {v2, v0}, Lcom/lenovo/scg/photos/BitmapRegionTileSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/photos/views/TiledImageView;->setTileSource(Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;)V

    .line 34
    iget-object v1, p0, Lcom/lenovo/scg/photos/FullscreenViewer;->mTextureView:Lcom/lenovo/scg/photos/views/TiledImageView;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/photos/FullscreenViewer;->setContentView(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/photos/FullscreenViewer;->mTextureView:Lcom/lenovo/scg/photos/views/TiledImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/TiledImageView;->destroy()V

    .line 41
    return-void
.end method
