.class final enum Lcom/lenovo/scg/camera/mode/RewindMode$Status;
.super Ljava/lang/Enum;
.source "RewindMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/RewindMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/mode/RewindMode$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/mode/RewindMode$Status;

.field public static final enum ANIMATION:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

.field public static final enum CAPTURE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

.field public static final enum EDIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

.field public static final enum INIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

.field public static final enum PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

.field public static final enum SAVE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

.field public static final enum SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/mode/RewindMode$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->INIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/mode/RewindMode$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    const-string v1, "CAPTURE"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/mode/RewindMode$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    const-string v1, "ANIMATION"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/mode/RewindMode$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->ANIMATION:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    const-string v1, "SELECT"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/camera/mode/RewindMode$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    const-string v1, "EDIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/RewindMode$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->EDIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    const-string v1, "SAVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/RewindMode$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SAVE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    .line 91
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->INIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->ANIMATION:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->EDIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SAVE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->$VALUES:[Lcom/lenovo/scg/camera/mode/RewindMode$Status;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/mode/RewindMode$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/mode/RewindMode$Status;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->$VALUES:[Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/mode/RewindMode$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    return-object v0
.end method
