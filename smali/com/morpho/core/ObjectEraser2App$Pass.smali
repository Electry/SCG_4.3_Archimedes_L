.class public final enum Lcom/morpho/core/ObjectEraser2App$Pass;
.super Ljava/lang/Enum;
.source "ObjectEraser2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morpho/core/ObjectEraser2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/morpho/core/ObjectEraser2App$Pass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/morpho/core/ObjectEraser2App$Pass;

.field public static final enum ONE:Lcom/morpho/core/ObjectEraser2App$Pass;

.field public static final enum TWO:Lcom/morpho/core/ObjectEraser2App$Pass;


# instance fields
.field private pass:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 37
    new-instance v0, Lcom/morpho/core/ObjectEraser2App$Pass;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v3, v2}, Lcom/morpho/core/ObjectEraser2App$Pass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/morpho/core/ObjectEraser2App$Pass;->ONE:Lcom/morpho/core/ObjectEraser2App$Pass;

    new-instance v0, Lcom/morpho/core/ObjectEraser2App$Pass;

    const-string v1, "TWO"

    invoke-direct {v0, v1, v2, v4}, Lcom/morpho/core/ObjectEraser2App$Pass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/morpho/core/ObjectEraser2App$Pass;->TWO:Lcom/morpho/core/ObjectEraser2App$Pass;

    .line 36
    new-array v0, v4, [Lcom/morpho/core/ObjectEraser2App$Pass;

    sget-object v1, Lcom/morpho/core/ObjectEraser2App$Pass;->ONE:Lcom/morpho/core/ObjectEraser2App$Pass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/morpho/core/ObjectEraser2App$Pass;->TWO:Lcom/morpho/core/ObjectEraser2App$Pass;

    aput-object v1, v0, v2

    sput-object v0, Lcom/morpho/core/ObjectEraser2App$Pass;->$VALUES:[Lcom/morpho/core/ObjectEraser2App$Pass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "pass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/morpho/core/ObjectEraser2App$Pass;->pass:I

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/morpho/core/ObjectEraser2App$Pass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/morpho/core/ObjectEraser2App$Pass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/morpho/core/ObjectEraser2App$Pass;

    return-object v0
.end method

.method public static values()[Lcom/morpho/core/ObjectEraser2App$Pass;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/morpho/core/ObjectEraser2App$Pass;->$VALUES:[Lcom/morpho/core/ObjectEraser2App$Pass;

    invoke-virtual {v0}, [Lcom/morpho/core/ObjectEraser2App$Pass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/morpho/core/ObjectEraser2App$Pass;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/morpho/core/ObjectEraser2App$Pass;->pass:I

    return v0
.end method
