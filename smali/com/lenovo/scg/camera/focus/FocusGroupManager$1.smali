.class Lcom/lenovo/scg/camera/focus/FocusGroupManager$1;
.super Ljava/lang/Object;
.source "FocusGroupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/focus/FocusGroupManager;->updateFocusGroupOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/FocusGroupManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/FocusGroupManager;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager$1;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FocusGroupManager$1;->this$0:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->updateFocusGroup()V

    .line 166
    return-void
.end method
