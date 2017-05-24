.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;
.super Ljava/lang/Object;
.source "WhiteListAllAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->loadPhoto(Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

.field final synthetic val$user:Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;->val$user:Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 158
    const-string/jumbo v2, "panhui4"

    const-string v3, "getUserHeadAync, onDone, "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz p1, :cond_0

    .line 162
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;->val$user:Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;->val$user:Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putUserHead(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v0

    .line 169
    .local v0, "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v1

    .line 170
    .local v1, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    .line 171
    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;->val$user:Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 172
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;->val$user:Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto :goto_0
.end method
