.class final enum Lcom/lenovo/scg/camera/shortcut/Line$TYPE;
.super Ljava/lang/Enum;
.source "Line.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/shortcut/Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/shortcut/Line$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

.field public static final enum FOUR:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

.field public static final enum INFINITE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

.field public static final enum NINE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    const-string v1, "FOUR"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->FOUR:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    new-instance v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    const-string v1, "NINE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->NINE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    new-instance v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    const-string v1, "INFINITE"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->INFINITE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    sget-object v1, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->FOUR:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->NINE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->INFINITE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->$VALUES:[Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/shortcut/Line$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/shortcut/Line$TYPE;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->$VALUES:[Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    return-object v0
.end method
