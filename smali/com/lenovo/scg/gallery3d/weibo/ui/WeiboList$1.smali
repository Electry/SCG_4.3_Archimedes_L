.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;
.super Ljava/lang/Thread;
.source "WeiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateDisplayType()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 363
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->cleanCacheData()V

    .line 364
    return-void
.end method
