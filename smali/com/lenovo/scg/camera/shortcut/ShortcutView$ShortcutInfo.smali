.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutInfo"
.end annotation


# instance fields
.field name:Ljava/lang/StringBuilder;

.field temporaryIndex:I

.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/shortcut/ShortcutView$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V

    return-void
.end method
