.class public Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
.super Ljava/lang/Object;
.source "AlbumItem.java"


# static fields
.field public static final TYPE_ALL_IMAGES:I = 0x0

.field public static final TYPE_ALL_VIDEOS:I = 0x1

.field public static final TYPE_CAMERA_IMAGES:I = 0x2

.field public static final TYPE_CAMERA_MEDIAS:I = 0x4

.field public static final TYPE_CAMERA_VIDEOS:I = 0x3

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_NORMAL_FOLDERS:I = 0x5


# instance fields
.field public mAlbumPath:Ljava/lang/String;

.field public final mBucketId:Ljava/lang/String;

.field public final mCount:I

.field public final mFirstImageUri:Landroid/net/Uri;

.field public final mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

.field public final mName:Ljava/lang/String;

.field public mThumbBitmap:Landroid/graphics/Bitmap;

.field public final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "bucketId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "list"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mType:I

    .line 63
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mBucketId:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mName:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .line 66
    invoke-interface {p4}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mCount:I

    .line 67
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mCount:I

    if-lez v0, :cond_0

    .line 68
    invoke-interface {p4, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mFirstImageUri:Landroid/net/Uri;

    .line 72
    :goto_0
    invoke-interface {p4, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mAlbumPath:Ljava/lang/String;

    .line 73
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mFirstImageUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static convertItemTypeToIncludedMediaType(I)I
    .locals 1
    .param p0, "itemType"    # I

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_0

    .line 38
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 31
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getIncludeMediaTypes()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mType:I

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->convertItemTypeToIncludedMediaType(I)I

    move-result v0

    return v0
.end method

.method public needsBucketId()Z
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mType:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumbBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 85
    return-void
.end method
