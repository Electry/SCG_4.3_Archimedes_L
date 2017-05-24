.class public final enum Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;
.super Ljava/lang/Enum;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

.field public static final enum INITIAL:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

.field public static final enum ON_SHARE_PREFERENCE_CHANGED:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

.field public static final enum OTHERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

.field public static final enum SET_FOCUS_PARAMTERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

.field public static final enum START_PREVIEW:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->INITIAL:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    const-string v1, "START_PREVIEW"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->START_PREVIEW:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    const-string v1, "SET_FOCUS_PARAMTERS"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->SET_FOCUS_PARAMTERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    const-string v1, "ON_SHARE_PREFERENCE_CHANGED"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->ON_SHARE_PREFERENCE_CHANGED:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->OTHERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    .line 347
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    sget-object v1, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->INITIAL:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->START_PREVIEW:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->SET_FOCUS_PARAMTERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->ON_SHARE_PREFERENCE_CHANGED:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->OTHERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->$VALUES:[Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

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
    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 347
    const-class v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->$VALUES:[Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    return-object v0
.end method
