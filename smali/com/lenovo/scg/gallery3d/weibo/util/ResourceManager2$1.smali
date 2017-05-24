.class Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;
.super Ljava/lang/Object;
.source "ResourceManager2.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V
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
    .line 141
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->val$childname:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->val$listener:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->val$childname:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->val$listener:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->finishLoadImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->access$000(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->val$childname:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;->val$listener:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->loadImageFromNet(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V

    goto :goto_0
.end method
