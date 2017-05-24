.class Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;
.super Ljava/lang/Object;
.source "ResourceManager2.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->loadImageFromNet(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

.field final synthetic val$childname:Ljava/lang/String;

.field final synthetic val$listener:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;->val$childname:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;->val$listener:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [B

    .line 182
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 183
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;->val$childname:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;)Z

    .line 184
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;->val$childname:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;->val$listener:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->finishLoadImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V
    invoke-static {v2, v0, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->access$000(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V

    .line 188
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
