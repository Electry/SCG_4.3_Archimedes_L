.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$5;
.super Ljava/lang/Object;
.source "FriendDetailWbAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)V
    .locals 0

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1006
    if-eqz p2, :cond_0

    .line 1007
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;-><init>()V

    .line 1008
    .local v1, "obj":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;
    iput-object p1, v1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;->url:Ljava/lang/String;

    .line 1009
    iput-object p2, v1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1010
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mAdapterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->access$500(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1012
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mAdapterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->access$500(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1014
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "obj":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;
    :cond_0
    return-void
.end method
