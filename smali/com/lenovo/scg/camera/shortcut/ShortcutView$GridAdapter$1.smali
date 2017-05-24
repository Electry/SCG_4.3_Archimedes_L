.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter$1;
.super Ljava/lang/Object;
.source "ShortcutView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter$1;->this$1:Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1190
    const-string v0, "ShortcutView"

    const-string v1, "Grid view onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter$1;->this$1:Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutPanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$300(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter$1;->this$1:Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;

    iget-object v1, v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$GridAdapter;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    # invokes: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->showMoveView(IILcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;I)V
    invoke-static {v1, v2, v3, v0, v4}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1600(Lcom/lenovo/scg/camera/shortcut/ShortcutView;IILcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;I)V

    .line 1202
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1196
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
