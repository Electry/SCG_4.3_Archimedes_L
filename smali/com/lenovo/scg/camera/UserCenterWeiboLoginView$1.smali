.class Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$1;
.super Ljava/lang/Object;
.source "UserCenterWeiboLoginView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$1;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$1;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # setter for: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperCamera:Z
    invoke-static {v0, p2}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$002(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;Z)Z

    .line 52
    const-string/jumbo v0, "usercenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckBox following super camera : isFollowSuperCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView$1;->this$0:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    # setter for: Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperGallery:Z
    invoke-static {v0, p2}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->access$102(Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;Z)Z

    .line 57
    const-string/jumbo v0, "usercenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckBox following super gallery : isFollowSuperGallery = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x7f1009c7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
