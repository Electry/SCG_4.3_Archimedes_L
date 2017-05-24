.class public Lcom/lenovo/scg/camera/setting/view/ActionListener;
.super Ljava/lang/Object;
.source "ActionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;,
        Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;,
        Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextHandleListener;,
        Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;,
        Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextAction;,
        Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;,
        Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;,
        Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;,
        Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method private registerClickListener(Landroid/view/View;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "handler"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;

    .prologue
    .line 138
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$1;-><init>(Lcom/lenovo/scg/camera/setting/view/ActionListener;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$2;-><init>(Lcom/lenovo/scg/camera/setting/view/ActionListener;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 155
    return-void
.end method

.method private registerHoverListener(Landroid/view/View;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "handler"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;

    .prologue
    .line 135
    return-void
.end method

.method private registerSPenDetachmentListener(Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextHandleListener;)V
    .locals 0
    .param p1, "handler"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextHandleListener;

    .prologue
    .line 167
    return-void
.end method

.method private registerTouchListener(Landroid/view/View;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "handler"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;

    .prologue
    .line 103
    return-void
.end method


# virtual methods
.method public registerContextHandler(Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextHandleListener;)V
    .locals 0
    .param p1, "handler"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextHandleListener;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/ActionListener;->registerSPenDetachmentListener(Lcom/lenovo/scg/camera/setting/view/ActionListener$ContextHandleListener;)V

    .line 31
    return-void
.end method

.method public registerInputHandler(Landroid/view/View;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "handler"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/view/ActionListener;->registerTouchListener(Landroid/view/View;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/view/ActionListener;->registerHoverListener(Landroid/view/View;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/view/ActionListener;->registerClickListener(Landroid/view/View;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;)V

    .line 27
    return-void
.end method
