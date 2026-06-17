# Dashboard Turbo — Despliegue en Google Cloud (Cloud Run + IAP)

## Contenido del repo
- `Dashboard_Calendario_Comercial_Turbo_Q3Q4.html`  → el dashboard
- `Dockerfile`                                       → cómo se sirve en Cloud Run

## Resumen de la arquitectura
GitHub (este repo)  →  Cloud Build (build automático en cada push)  →  Cloud Run (hospeda el sitio)  →  IAP (candado por correo corporativo)

## Pasos (resumen — ver guía completa del chat)
1. Crear proyecto en Google Cloud (dentro del Workspace corporativo).
2. Habilitar APIs: Cloud Run, Cloud Build, Artifact Registry, IAP, Cloud Resource Manager.
3. Conectar GitHub (Cloud Build → Repositorios → pestaña "2nd gen" → Create host connection).
4. Cloud Run → Deploy → "Continuously deploy from a repository" → elegir este repo y rama.
5. En el deploy: "Require authentication" → activar Identity-Aware Proxy (IAP).
6. En IAP: dar el rol "IAP-secured Web App User" a los correos / grupo / dominio corporativo.
