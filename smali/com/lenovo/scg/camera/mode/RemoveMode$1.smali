.class Lcom/lenovo/scg/camera/mode/RemoveMode$1;
.super Ljava/lang/Object;
.source "RemoveMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/RemoveMode;->enter(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$1;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->reset()V

    .line 275
    return-void
.end method
