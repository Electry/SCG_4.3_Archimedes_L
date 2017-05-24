.class Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$9;
.super Ljava/lang/Object;
.source "AtActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->onRefreshComplete()V

    .line 316
    return-void
.end method
