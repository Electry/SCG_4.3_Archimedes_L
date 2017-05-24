.class Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$4;
.super Ljava/lang/Object;
.source "ReplyRepostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mResizeView:Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/RsizeScrollView;->getBottom()I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->bootmActionBar:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$302(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;I)I

    .line 285
    const-string/jumbo v0, "wangdiyuan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootmActionBar  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->bootmActionBar:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method
