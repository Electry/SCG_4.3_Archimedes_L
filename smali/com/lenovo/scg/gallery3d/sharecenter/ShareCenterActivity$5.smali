.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$5;
.super Ljava/lang/Object;
.source "ShareCenterActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/sharecenter/RetryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retry()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->shareImage()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    .line 413
    return-void
.end method
