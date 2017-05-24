.class public Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;
.super Ljava/lang/Object;
.source "LittleCircleListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CenterRunnable"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->smoothScrollToView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mIsForceCentering:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->access$002(Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;Z)Z

    .line 195
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;->mView:Landroid/view/View;

    .line 189
    return-void
.end method
