.class Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyLoadedBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mResId:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;I)V
    .locals 0
    .param p2, "resId"    # I

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->mResId:I

    .line 147
    return-void
.end method


# virtual methods
.method public declared-synchronized get()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 151
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 152
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->mResId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 155
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
