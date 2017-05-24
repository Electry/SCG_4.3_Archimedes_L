.class public Lcn/jingling/lib/textbubble/TouchParameter;
.super Ljava/lang/Object;
.source "TouchParameter.java"


# instance fields
.field public FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

.field public isUp:Ljava/lang/Boolean;

.field public pointerCnt:I

.field public secondPointer:Lcn/jingling/lib/textbubble/MyPoint;


# direct methods
.method public constructor <init>(ILcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "pC"    # I
    .param p2, "p1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p3, "p2"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p4, "up"    # Ljava/lang/Boolean;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcn/jingling/lib/textbubble/TouchParameter;->pointerCnt:I

    .line 13
    iput-object p4, p0, Lcn/jingling/lib/textbubble/TouchParameter;->isUp:Ljava/lang/Boolean;

    .line 15
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0, p2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(Lcn/jingling/lib/textbubble/MyPoint;)V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    .line 16
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0, p3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(Lcn/jingling/lib/textbubble/MyPoint;)V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TouchParameter;->secondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    .line 17
    return-void
.end method


# virtual methods
.method public getFirstPointer()Lcn/jingling/lib/textbubble/MyPoint;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    return-object v0
.end method

.method public getIsUp()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TouchParameter;->isUp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPointerCnt()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcn/jingling/lib/textbubble/TouchParameter;->pointerCnt:I

    return v0
.end method

.method public getSecondPointer()Lcn/jingling/lib/textbubble/MyPoint;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TouchParameter;->secondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    return-object v0
.end method

.method public setFirstPointer(Lcn/jingling/lib/textbubble/MyPoint;)V
    .locals 0
    .param p1, "firstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 36
    iput-object p1, p0, Lcn/jingling/lib/textbubble/TouchParameter;->FirstPointer:Lcn/jingling/lib/textbubble/MyPoint;

    .line 37
    return-void
.end method

.method public setIsUp(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "up"    # Ljava/lang/Boolean;

    .prologue
    .line 20
    iput-object p1, p0, Lcn/jingling/lib/textbubble/TouchParameter;->isUp:Ljava/lang/Boolean;

    .line 21
    return-void
.end method

.method public setPointerCnt(I)V
    .locals 0
    .param p1, "pointerCnt"    # I

    .prologue
    .line 28
    iput p1, p0, Lcn/jingling/lib/textbubble/TouchParameter;->pointerCnt:I

    .line 29
    return-void
.end method

.method public setSecondPointer(Lcn/jingling/lib/textbubble/MyPoint;)V
    .locals 0
    .param p1, "secondPointer"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 44
    iput-object p1, p0, Lcn/jingling/lib/textbubble/TouchParameter;->secondPointer:Lcn/jingling/lib/textbubble/MyPoint;

    .line 45
    return-void
.end method
