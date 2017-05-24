.class public Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;
.super Ljava/lang/Object;
.source "ActionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/ActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Input"
.end annotation


# instance fields
.field private mButtonAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

.field private mClickAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

.field private mEventTime:J

.field private mInputAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

.field private mInputType:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonAction()Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mButtonAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    return-object v0
.end method

.method public getClickAction()Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mClickAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    return-object v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mEventTime:J

    return-wide v0
.end method

.method public getInputAction()Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mInputAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    return-object v0
.end method

.method public getInputType()Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mInputType:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setButtonAction(Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;)V
    .locals 0
    .param p1, "action"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mButtonAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    .line 241
    return-void
.end method

.method public setClickAction(Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;)V
    .locals 0
    .param p1, "action"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mClickAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    .line 249
    return-void
.end method

.method public setEventTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mEventTime:J

    .line 257
    return-void
.end method

.method public setInputAction(Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;)V
    .locals 0
    .param p1, "action"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mInputAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    .line 233
    return-void
.end method

.method public setInputType(Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;)V
    .locals 0
    .param p1, "type"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mInputType:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    .line 225
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->mView:Landroid/view/View;

    .line 265
    return-void
.end method
