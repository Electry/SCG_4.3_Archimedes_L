.class public Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;
.super Ljava/lang/Object;
.source "ActionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/ActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputBuilder"
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
    .locals 2

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mInputType:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    .line 277
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mInputAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    .line 278
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mButtonAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    .line 279
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mClickAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mEventTime:J

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mInputType:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    .line 277
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mInputAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    .line 278
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mButtonAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    .line 279
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->UNDEFINED:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mClickAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mEventTime:J

    .line 287
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mView:Landroid/view/View;

    .line 288
    return-void
.end method


# virtual methods
.method public build()Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;
    .locals 4

    .prologue
    .line 296
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;-><init>()V

    .line 297
    .local v0, "input":Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mInputType:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->setInputType(Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;)V

    .line 298
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mInputAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->setInputAction(Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;)V

    .line 299
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mButtonAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->setButtonAction(Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;)V

    .line 300
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mClickAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->setClickAction(Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;)V

    .line 301
    iget-wide v2, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mEventTime:J

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->setEventTime(J)V

    .line 302
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;->setView(Landroid/view/View;)V

    .line 303
    return-object v0
.end method

.method public setButtonAction(Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;)Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;
    .locals 0
    .param p1, "action"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mButtonAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ButtonAction;

    .line 318
    return-object p0
.end method

.method public setClickAction(Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;)Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;
    .locals 0
    .param p1, "action"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mClickAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    .line 323
    return-object p0
.end method

.method public setEventTime(J)Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 327
    iput-wide p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mEventTime:J

    .line 328
    return-object p0
.end method

.method public setInputAction(Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;)Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;
    .locals 0
    .param p1, "action"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mInputAction:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputAction;

    .line 313
    return-object p0
.end method

.method public setInputType(Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;)Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;
    .locals 0
    .param p1, "type"    # Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mInputType:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    .line 308
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->mView:Landroid/view/View;

    .line 333
    return-object p0
.end method
