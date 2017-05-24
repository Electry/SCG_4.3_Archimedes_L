.class Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$2;
.super Ljava/lang/Object;
.source "AtActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;
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
    .line 164
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mIsRefresh:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$002(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Z)Z

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getSinaAttentionList(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$1000(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Z)V

    .line 170
    return-void
.end method
