.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$1;
.super Ljava/lang/Thread;
.source "WeiboHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->bindData(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->loadAccount()V

    .line 220
    return-void
.end method
